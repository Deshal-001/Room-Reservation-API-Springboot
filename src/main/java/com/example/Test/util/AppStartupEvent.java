package com.example.Test.util;


import com.example.Test.data.Reservation;
import com.example.Test.data.ReservationRepository;
import com.example.Test.data.Room;
import com.example.Test.data.RoomRepository;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.stereotype.Component;

@Component
public class AppStartupEvent implements ApplicationListener<ApplicationReadyEvent> {

private final RoomRepository roomRepository;
private final ReservationRepository reservationRepository;

    public AppStartupEvent(RoomRepository roomRepository, ReservationRepository reservationRepository) {
        this.roomRepository = roomRepository;
        this.reservationRepository = reservationRepository;
    }


    @Override
    public void onApplicationEvent(ApplicationReadyEvent event) {
        Iterable<Room> rooms=this.roomRepository.findAll();
        rooms.forEach(System.out::println);
        Iterable<Reservation> reservations=this.reservationRepository.findAll();
        reservations.forEach(System.out::println);
    }


   public void getRoomGivenDate(){
       Iterable<Reservation> reservations=this.reservationRepository.findAll();
       reservations.forEach(System.out::println);
   }
}
