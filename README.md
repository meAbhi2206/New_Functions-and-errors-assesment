
# Project Title
Smart Contract Error Handling

## Description
This project implements a simple smart contract for hotel room booking. The smart contract allows users to book and cancel hotel rooms by interacting with the contract functions. It incorporates error handling functions (require(), assert(), and revert()) to validate inputs, perform internal checks, and handle exceptional conditions during the booking and cancellation processes. 

## Getting Started

### Executing Program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Steps to interact with the contract using Remix:

1. Open the contract file in Remix IDE.
2. Select the appropriate compiler version.
3. Compile the contract.
4. Deploy the contract to a local blockchain or a test network of your choice.
5. Use the contract functions to set values, retrieve values, and trigger error conditions.
6. Observe the outputs and transaction status in the Remix console.

### Contract Functions

1. Book a Room:
* Call the `bookRoom()` function to book a hotel room.
* Provide a valid room number as an argument to the function.
* Ensure the room is available and within the valid range.
```
// Book a room
contractInstance.bookRoom(101);
```
2. Cancel a Room Booking:

* Call the `cancelRoomBooking()` function to cancel a previously booked room.
* Provide the room number as an argument to the function.
* Ensure the room is booked and eligible for cancellation.
* If the room is not booked or the room number is not eligible for cancellation, the transaction will be reverted with an appropriate error message.
* If successful, the room booking will be canceled in the contract's mapping.
```
// Cancel a room booking
contractInstance.cancelRoomBooking(101);
```
Make sure to replace contractInstance with the actual contract instance in your environment.

## Author
Abhishek Ranjan

## License
This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).
