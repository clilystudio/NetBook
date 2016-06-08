package com.clilystudio.netbook.model;

import com.clilystudio.netbook.db.BookFile;

public class ResponseBookFile {
    private String name;
    private String size;

    public ResponseBookFile(BookFile paramBookFile) {
        this.size = paramBookFile.getSize();
        this.name = paramBookFile.getName();
    }

    public String getName() {
        return this.name;
    }

    public void setName(String paramString) {
        this.name = paramString;
    }

    public String getSize() {
        return this.size;
    }

    public void setSize(String paramString) {
        this.size = paramString;
    }
}

