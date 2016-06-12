
package com.clilystudio.netbook.model;

import java.util.List;

public class GameGroupItem {

    private String _id;
    private List games;
    private String name;

    public List getGames()
    {
        return games;
    }

    public String getName()
    {
        return name;
    }

    public int getRowCount()
    {
        if( games.size() % 3 == 0 )
            return games.size() / 3;
        else
            return 1 + games.size() / 3;
    }

    public String get_id()
    {
        return _id;
    }

    public void setGames(List List1)
    {
        games = List1;
    }

    public void setName(String String1)
    {
        name = String1;
    }

    public void set_id(String String1)
    {
        _id = String1;
    }
}
