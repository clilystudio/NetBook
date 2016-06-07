package com.clilystudio.netbook.model;

import java.util.Date;

public class PayConsumeRecord$Order
{
  private String _id;
  private Date created;
  PayConsumeRecord.OrderItem[] items;
  private PayConsumeRecord.PayType payType;
  private int price;
  private String type;
  private int useCurrency;
  private int useVoucher;

  public String getBookName()
  {
    if ((this.items == null) || (this.items.length == 0))
      return "";
    return this.items[0].getBookName();
  }

  public String getChapterTitle()
  {
    if ((this.items == null) || (this.items.length == 0))
      return "";
    return this.items[0].getChapterTitle();
  }

  public Date getCreated()
  {
    return this.created;
  }

  public PayConsumeRecord.OrderItem[] getItems()
  {
    return this.items;
  }

  public PayConsumeRecord.PayType getPayType()
  {
    if (this.payType == null)
    {
      if (this.type.equals("single"))
        break label65;
      if (!this.type.equals("auto"))
        break label43;
      this.payType = PayConsumeRecord.PayType.AUTO_PURCHASE;
    }
    while (true)
    {
      return this.payType;
      label43: if (this.type.equals("vip"))
      {
        this.payType = PayConsumeRecord.PayType.VIP_SERVICE;
        continue;
      }
      label65: this.payType = PayConsumeRecord.PayType.SINGLE_CHAPTER;
    }
  }

  public String getPayTypeString()
  {
    switch (PayConsumeRecord.1.$SwitchMap$com$ushaqi$zhuishushenqi$model$PayConsumeRecord$PayType[getPayType().ordinal()])
    {
    default:
      return "";
    case 1:
      return "单章购买";
    case 2:
      return "批量购买";
    case 3:
      return "自动购买";
    case 4:
    }
    return "整本购买";
  }

  public int getPrice()
  {
    return this.price;
  }

  public String[] getTitles()
  {
    String[] arrayOfString = new String[this.items.length];
    for (int i = 0; i < this.items.length; i++)
      arrayOfString[i] = this.items[i].getChapterTitle();
    return arrayOfString;
  }

  public String getType()
  {
    return this.type;
  }

  public int getUseCurrency()
  {
    return this.useCurrency;
  }

  public int getUseVoucher()
  {
    return this.useVoucher;
  }

  public String get_id()
  {
    return this._id;
  }

  public void setCreated(Date paramDate)
  {
    this.created = paramDate;
  }

  public void setItems(PayConsumeRecord.OrderItem[] paramArrayOfOrderItem)
  {
    this.items = paramArrayOfOrderItem;
  }

  public void setPrice(int paramInt)
  {
    this.price = paramInt;
  }

  public void setType(String paramString)
  {
    this.type = paramString;
  }

  public void setUseCurrency(int paramInt)
  {
    this.useCurrency = paramInt;
  }

  public void setUseVoucher(int paramInt)
  {
    this.useVoucher = paramInt;
  }

  public void set_id(String paramString)
  {
    this._id = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.PayConsumeRecord.Order
 * JD-Core Version:    0.6.0
 */