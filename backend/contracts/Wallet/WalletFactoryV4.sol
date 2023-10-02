// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import "./MultiSigWallet.sol";

/**
 * WalletFactoryV4コントラクト
 */
contract WalletFactoryV4 {
    // Verifiable Credentials用の構造体
    struct VcInfo {
        // VCのファイル名
        string name;
        // VCのCID情報(IPFS)
        string cid;
    }

    // MultiSigWallet型の配列
    MultiSigWallet[] public wallets;
    // 関数から返すことのできる最大値
    uint256 constant maxLimit = 20;
    // owner
    address public owner;

    // mapping
    mapping(address => bool) public isRegistered;
    mapping(string => bool) public userExist;
    mapping(address => string) public dids;
    mapping(string => address) public addrs;
    mapping(string => address ) public qrdata;
    mapping(string => VcInfo[]) public vcs;

    //modifier
    modifier onlyOwner() {
        require(msg.sender == owner, "This address is not an owner address!");
        
        _;
    }

    // event
    event WalletCreated(
        MultiSigWallet indexed wallet,
        string name,
        address[] owners,
        uint256 required
    );
    event Registered(address addr, string did);
    event Usercreated(address addr, string qrdata);
    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );

    /**
     * コンストラクター
     */
    constructor() {
        owner = msg.sender;
    }

    /**
     * MultiSigWalletのインスタンス数を取得する関数
     */
    function walletsCount() public view returns (uint256) {
        return wallets.length;
    }

    /**
     * MultiSigWalletのインスタンス生成関数
     * @param _name ウォレットの名前
     * @param _owners アドレスの配列
     * @param _required 閾値
     */
    function createWallet(
        string memory _name,
        address[] memory _owners,
        uint256 _required
    ) public {
        // インスタンスを生成
        MultiSigWallet wallet = new MultiSigWallet(_name, _owners, owner, _required);
        // 配列に追加する。
        wallets.push(wallet);
        // イベントの発行
        emit WalletCreated(wallet, _name, _owners, _required);
    }

    /**
     * 作成済みウォレットの情報を取得するメソッド
     */
    function getWallets(uint256 limit, uint256 offset)
        public
        view
        returns (MultiSigWallet[] memory coll)
    {
        require(offset <= walletsCount(), "offset out of bounds");
        // 最大値を上回っている場合は、limitを格納する。
        uint256 size = walletsCount() - offset;
        size = size < limit ? size : limit;
        // sizeは、maxLimitを超えてはならない。
        size = size < maxLimit ? size : maxLimit;
        coll = new MultiSigWallet[](size);

        for (uint256 i = 0; i < size; i++) {
            coll[i] = wallets[offset + i];
        }
        return coll;
       
    }

    function deletWallets(uint256 index)
        public
    {
        bool shift = false;
        for (uint256 i = 0; i < wallets.length -1 ; i++) {
            if (index == i) {
                wallets[i] = wallets[i+1];
                shift = true;
                continue;
            }
            if(shift){
                wallets[i] = wallets[i+1];
            }
            
        } 
        wallets.pop();
        //["0x5B38Da6a701c568545dCfcB03FcB875f56beddC4","0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2"]
    }

    /**
     * register
     * @param _addr address
     * @param _did DID
     */
    function register(address _addr, string memory _did) public onlyOwner {
        // check
        require(!isRegistered[_addr], "This address is already registered!!");

        // set
        isRegistered[_addr] = true;
        dids[_addr] = _did;
        addrs[_did] = _addr;

        emit Registered(_addr, _did);
    }

    function creatUser(address _addr, string memory _qrdata) public onlyOwner {
        // check
        require(!userExist[_qrdata], "This address is already registered!!");

        // set
        userExist[_qrdata] = true;
        
        qrdata[_qrdata] = _addr;

        emit Usercreated(_addr, _qrdata);
    }

    /**
     * getVcs function
     * @param _did DID
     * @return vcs[_did] Verifiable Credentials
     */
    function getVcs(string memory _did) public view returns (VcInfo[] memory) {
        return vcs[_did];
    }


    /**
     * updatVc function
     * @param _did DID
     * @param _name VC Name
     * @param _cid VC's CID
     */
    function updateVc(
        string memory _did,
        string memory _name,
        string memory _cid
    ) public {
        // get Vcinfo
        VcInfo[] storage coll = vcs[_did];

        // puch new Vc info
        coll.push(VcInfo({name: _name, cid: _cid}));
        // register again
        vcs[_did] = coll;
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(
            newOwner != address(0),
            "Ownable: new owner is the zero address"
        );
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = owner;
        owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}