package com.clilystudio.app.netbook.model;

import java.io.Serializable;
import java.util.Date;

public class GameGift
        implements Serializable {
    private static final long serialVersionUID = -8561285468913347033L;
    public String _id;
    public String description;
    public boolean enabled;
    public Game game;
    public int left;
    public Date rangeFrom;
    public Date rangeTo;
    public String title;
    public int total;
    public String usage;
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.GameGift
 * JD-Core Version:    0.6.2
 */