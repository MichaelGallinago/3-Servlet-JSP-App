package com.micg.servlet.model;

public record Directory(String name, String date, String path) implements FileType {

    @Override
    public String name() {
        return name + "/";
    }

    @Override
    public String path() {
        return path + "\\" + name;
    }

    @Override
    public String size() {
        return "";
    }
}
