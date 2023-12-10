The Genesis project is a Web 3 open source project. 
-The mission of the project is onboarding and mass adoption. 
It is a herd of side projects and hackathon projects that have emerged from the web 3 toolkit.

include IDQ | Soul wallet | Tive ◉ | OKE | CHHEP 

## Product Name

IDQ Soul Wallet

## Category

- Security
- EVM xrp sidechain
- Wallet


## demo video
 https://youtu.be/TfPqbp29ESI?feature=shared


## pitch

[ピッチ資料](https://bit.ly/3Rz2C9c)


## Summary

IDQ | Soul Wallet is a wallet product aimed at the general adoption of Web3.

We believe that the Web3 era is "a time when individuals can digitally manage their personal information with a Wallet and PHR health data DID".  
Web3 is not yet widely used. This will be the catalyst.  

Functionality and points are three:   
1. it does not require a private key, it uses web3auth to securely onboard wallet user, it is a secure digital ID/transfer and very easy to use!
2. The paymaster take cares of the the transaction. The paymaster use XRP from EVM sidechain compatible wallet metamask to pay for gas fees.
2. just scan the QR code with your phone to access your Wallet, also user can transfer tokens by scanning qr code.
3. user can create their own multisignature wallet for safe transactions.
4. API first (You can use it by simply plugging in the PDI authentication system for this industry-academia collaboration at the API connection point). (You can also use the PDI authentication system for business-to-business collaboration and partnerships.)

Private/Secure/Earn  

By making the Web3 Wallet secure and self-earning, the way of touching information and the new way of communication of Web3 can be made into a communication protocol, accelerating social infrastructure, and making use of the DID linkage in the healthcare, IoT, and smart city areas.
Aim for omni-channel and super-application.  

Specificity: DID linkage, approval-based remittance system

Features to be added:
1. Decentralized exchange, for toke trade and liquidity provision.
2. NFT buying and selling with DID.


## Product URL

[IDQ Soul Wallet](https://idqsoulwallet.vercel.app/)

## Github repo(open) URL

[Githuh repo](https://github.com/AMASWeb3/Genesis)

## List of functions

| Function Name                 |Description  |
| ------------------------ | --------------------------------------------------------------------------------- |
| web3auth login | create ContractWallet |
| Mint | Mint IDQ token |
| Send | Send IDQ token |
| Buy | Buy IDQ token |
| Register DID | Ability to issue a DID and register it with SMACON upon new login |
| Register a DID-related data | Function to register information (VC) associated with IDs to IPFS |
| DID Related Information Display Function | Ability to display information tied to DID |
| Common Fund Pool Creation Function | Ability to create a multisig contract, a common pool of funds |
| common fund pooling remittance function | Ability to transfer money from a multisig contract to a target address |
| common fund pooling remittance function | Ability to approve for common fund pool remittance|
| deposit | Ability to deposit native tokens in multisig contracts using IDQ tokens|

## Distributed infrastructure and APIs

| No. | Name   | used API    |
| --- | ------ | --------------- |
| 1   | ION    | generateKeyPair |
| 2   | ION    | generateRequest |
| 3   | ION    | AnchorRequest   |
| 4   | Pinata | pinFileToIPFS   |
| 5   | Pinata | Gateway         |
| 6   | Pinata | pinList         |
| 7   |        |                 |

## tech stacks

| No. | name                  | 
| --- | --------------------- | 
| 1   | truffle               | 
| 2   | React.js              | 
| 3   | express               | 
| 4   | superAgent            | 
| 5   | MutliSig              | 
| 6   | SmartContract         | 
| 7   | ION(DID)              | 
| 8   | ethers.js             | 
| 9   | Web3.js               | 
| 10  | Web3Auth              |           
| 11  | RESTful API           |                
| 13  | ERC20 Token           | 
| 14  | Verifiable Credential | 
| 15  | Pinata API            | 
| 16  | Ipfs                  | 
| 17  | Stripe API            | 
| 18  | MUI Component         | 

tech stacks that will be used in the future
No.	name
1	AWS S3
2	AWS EC2
3	AWS Route53
4	AWS API GateWay
5	AWS Cloud Watch
6	AWS Elastic IP

Deployed Contract information:
No.	Contract Name	Explorer URL
1	MyToken	   0xf01605c54Cc3b0C45bbA011b028eF6e05C46Cc1e
2	WalletFactoryV4	   0x3Bdf037317Af5be7f623cEb0b94FB9a5dD5480db

## Blockchain
EVM Sidechain for XRPL(devnet)

### IDQ Soul Wallet's flow

[![](https://mermaid.ink/img/pako:eNp9VMFu2zAM_RXCpxbpDs3RhwIDsgE5dNiwAbvkokh0IsSWPImKZxT991GS7cVx0pws8fGJ5HvhWyGtwqIsPP4JaCRutDg40ewM8I801QjbzQ_Avy1KQgVVbTt4qJxt4Bt2EDw6cHjQnpwgbQ2QBYWt9ZriJx0RmlCT9voAnahrpMfMLQJZE5o9uuEsybrEd3m2nUH3nG9a4UhL3QpD4J9BePjqrCE06kZ8HeOfv2-BCc8j5yWiSgTplR4k8zhJS1QXUa9jA79TA0sURdQve0KTmcRIlcuHTy8vUJVxLrXtFxG6G-GcRpwWE8y4KkG68jo6lQDSYdIk45NUMYVnV4Jh8Wa6uWgAP3D7_L5flyCZNMk4Q_NkB-R6QrJ9XN9SAmMjdA1CKYfez5DckzyiPIGuEvIo_BHOog4I2oOouWbVD4-hQzVLTj2UrKlRYA2SbpCF8L6zTi26jBUxxR1gNdXtkIIzUIna43Wpm-1mGiNow_0H-X-kkwQJghGdA90YaNFV1jWcqkmLejbE2VtsAu19yP82ilaaz5e7Udq3teivZfMsv78lsZCSh7-wRysOCHP8Kie0wUmWA295YRUrGdywD_2V_qtYf4o12tDDI8yDiX0Yc7ZSLBpsNacaHhpEzi6J8HGfeBIUfEyLtxdDmvf98fq5b_B9LO_a2NxXul9K0g0-NCzEeSqneCoadOx-xUv1LSbsCiZvcFeU_KmwElzPrtiZd4bGJfizN7Io2Vj4VIRWsY-GHVyUyZLj7ReleVdNl5iOr3l7pyX-_g_79OUO?type=png)](https://mermaid.live/edit#pako:eNp9VMFu2zAM_RXCpxbpDs3RhwIDsgE5dNiwAbvkokh0IsSWPImKZxT991GS7cVx0pws8fGJ5HvhWyGtwqIsPP4JaCRutDg40ewM8I801QjbzQ_Avy1KQgVVbTt4qJxt4Bt2EDw6cHjQnpwgbQ2QBYWt9ZriJx0RmlCT9voAnahrpMfMLQJZE5o9uuEsybrEd3m2nUH3nG9a4UhL3QpD4J9BePjqrCE06kZ8HeOfv2-BCc8j5yWiSgTplR4k8zhJS1QXUa9jA79TA0sURdQve0KTmcRIlcuHTy8vUJVxLrXtFxG6G-GcRpwWE8y4KkG68jo6lQDSYdIk45NUMYVnV4Jh8Wa6uWgAP3D7_L5flyCZNMk4Q_NkB-R6QrJ9XN9SAmMjdA1CKYfez5DckzyiPIGuEvIo_BHOog4I2oOouWbVD4-hQzVLTj2UrKlRYA2SbpCF8L6zTi26jBUxxR1gNdXtkIIzUIna43Wpm-1mGiNow_0H-X-kkwQJghGdA90YaNFV1jWcqkmLejbE2VtsAu19yP82ilaaz5e7Udq3teivZfMsv78lsZCSh7-wRysOCHP8Kie0wUmWA295YRUrGdywD_2V_qtYf4o12tDDI8yDiX0Yc7ZSLBpsNacaHhpEzi6J8HGfeBIUfEyLtxdDmvf98fq5b_B9LO_a2NxXul9K0g0-NCzEeSqneCoadOx-xUv1LSbsCiZvcFeU_KmwElzPrtiZd4bGJfizN7Io2Vj4VIRWsY-GHVyUyZLj7ReleVdNl5iOr3l7pyX-_g_79OUO)

### folder tree

```bash
.
├── README.md     this document
├── api           API Server
├── backend       smartcontract
├── frontend      frontend(React.js)

```
