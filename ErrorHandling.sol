// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelBooking {
    mapping(uint256 => bool) public bookedRooms;

    event RoomBooked(address indexed user, uint256 roomNumber);
    event RoomCancelled(address indexed user, uint256 roomNumber);

    function bookRoom(uint256 roomNumber) external {
        // Use require() to check if the room is available for booking
        require(!bookedRooms[roomNumber], "Room is already booked.");

        // Use assert() to validate the room number
        assert(roomNumber > 100 && roomNumber <= 500);

        // Book the room
        bookedRooms[roomNumber] = true;

        // Emit an event to indicate the room booking
        emit RoomBooked(msg.sender, roomNumber);

        //  revert() to handle exceptional conditions
        if (roomNumber == 113) {
            revert("Room number 113 is not available.");
        }
    }

    function cancelRoomBooking(uint256 roomNumber) external {
        // require() to check if the room is already booked
        require(bookedRooms[roomNumber], "Room is not booked.");

        // Cancel the room booking
        bookedRooms[roomNumber] = false;

        // Emit an event to indicate the room cancellation
        emit RoomCancelled(msg.sender, roomNumber);

        // Use revert() to handle exceptional conditions
        if (roomNumber % 2 == 0) {
            revert("Even numbered rooms cannot be cancelled.");
        }
    }
}
