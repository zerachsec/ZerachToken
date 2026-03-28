# Zerach ERC20 Token (ZK)

A minimal ERC20 token implementation built using **Solidity** and **OpenZeppelin**, tested with **Foundry**.

---

## 🚀 Overview

**ZerachOToken (ZK)** is a simple ERC20 token that:

* Mints an initial supply to the deployer
* Uses OpenZeppelin’s secure ERC20 implementation
* Includes Foundry-based tests for validation

---

## 📦 Tech Stack

* **Solidity** `^0.8.28`
* **Foundry** (Forge, Cast)
* **OpenZeppelin Contracts**

---

## 📁 Project Structure

```
.
├── src/
│   └── ZerachOToken.sol        # ERC20 Token Contract
├── script/
│   └── DeployZKoToken.s.sol    # Deployment Script
├── test/
│   └── ZerachOTokenTest.t.sol  # Test Suite
├── lib/
│   └── openzeppelin-contracts
├── foundry.toml
└── README.md
```

---

## 🪙 Contract Details

### ZerachOToken

* **Name:** zerachToken
* **Symbol:** ZK
* **Decimals:** 18 (default)

### Constructor

```solidity
constructor(uint256 initialSupply)
```

* Mints `initialSupply` tokens to the deployer.

---

## ⚙️ Installation

### 1. Clone the repository

```bash
git clone https://github.com/yourusername/your-repo.git
cd your-repo
```

---

### 2. Install dependencies

```bash
forge install
```

---

## 🧪 Running Tests

```bash
forge test -vv
```

### Run Coverage

```bash
forge coverage
```

---

## 🚀 Deployment

### Local / Script Deployment

```bash
forge script script/DeployZKoToken.s.sol --broadcast
```

---

## ✅ Test Coverage

The test suite covers:

* Token name and symbol validation
* Initial supply minting
* Balance correctness
* Transfer functionality

---

## 🧠 Example Test

```solidity
function testTransferWorks() public {
    token.transfer(bob, 100 ether);

    assertEq(token.balanceOf(bob), 100 ether);
}
```

---

## ⚠️ Notes

* Uses OpenZeppelin ERC20 for security and standards compliance
* Initial supply is configurable at deployment
* Designed as a foundational contract for learning and extension

---

## 🔮 Future Improvements

* Add `Ownable` or access control
* Add mint/burn functionality
* Add permit (EIP-2612)
* Gas optimizations
* Security audit test cases (reentrancy, edge cases)

---

## 👨‍💻 Author

**Vishaal (Zerach)**
Smart Contract Security Engineer

---

## 📜 License

MIT License
