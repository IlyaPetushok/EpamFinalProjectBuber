package com.example.epamfinalprojectbuber.command;

import com.example.epamfinalprojectbuber.command.impl.AuthorizationCommand;
import com.example.epamfinalprojectbuber.command.impl.RegistrationCommand;

public enum CommandType {
    AUTHORIZATION(new AuthorizationCommand()),
    REGISTRATION(new RegistrationCommand());

    Command command;

    CommandType(Command command){this.command=command;}

    public static Command getCommand(String commandStr) {
        //valid
        CommandType commandType = CommandType.valueOf(commandStr.toUpperCase());
        return commandType.command;
    }
}
