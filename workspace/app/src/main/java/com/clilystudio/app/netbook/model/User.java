package com.clilystudio.app.netbook.model;

import com.clilystudio.app.netbook.api.ApiService;
import java.io.Serializable;

public class User
  implements Serializable
{
  private static final String FEMALE = "female";
  private static final String MALE = "male";
  private static final String UNKNOWN = "null";
  private static final long serialVersionUID = 4596333208470430366L;
  private String _id;
  private String avatar;
  private int exp;
  private String gender;
  private int lv;
  private String nickname;
  private String type;

  public String getAvatar()
  {
    return this.avatar;
  }

  public int getExp()
  {
    return this.exp;
  }

  public String getFullAvatar()
  {
    return ApiService.a + this.avatar;
  }

  public String getGender()
  {
    return this.gender;
  }

  public int getGenderFlag()
  {
    String str = this.gender;
    int i = -1;
    switch (str.hashCode())
    {
    default:
    case 3343885:
    case -1278174388:
    case 3392903:
    }
    while (true)
      switch (i)
      {
      case 0:
      default:
        return 0;
        if (str.equals("male"))
        {
          i = 0;
          continue;
          if (str.equals("female"))
          {
            i = 1;
            continue;
            if (str.equals("null"))
              i = 2;
          }
        }
        break;
      case 1:
      case 2:
      }
    return 1;
    return 2;
  }

  public String getId()
  {
    return this._id;
  }

  public int getLv()
  {
    if (this.lv <= 0)
      this.lv = 1;
    return this.lv;
  }

  public String getNickname()
  {
    return this.nickname;
  }

  public String getType()
  {
    return this.type;
  }

  public boolean isDoyan()
  {
    return "doyen".equals(getType());
  }

  public boolean isOfficial()
  {
    return "official".equals(getType());
  }

  public void setAvatar(String paramString)
  {
    this.avatar = paramString;
  }

  public void setExp(int paramInt)
  {
    this.exp = paramInt;
  }

  public void setGender(String paramString)
  {
    this.gender = paramString;
  }

  public void setId(String paramString)
  {
    this._id = paramString;
  }

  public void setLv(int paramInt)
  {
    this.lv = paramInt;
  }

  public void setNickname(String paramString)
  {
    this.nickname = paramString;
  }

  public void setType(String paramString)
  {
    this.type = paramString;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.User
 * JD-Core Version:    0.6.2
 */