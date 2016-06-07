package com.ushaqi.zhuishushenqi.model;

public class MysteryBookList
{
  private MysteryBookList.MysteryBookRoot[] books;
  private boolean ok;

  public MysteryBookList.MysteryBookRoot[] getBooks()
  {
    return this.books;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setBooks(MysteryBookList.MysteryBookRoot[] paramArrayOfMysteryBookRoot)
  {
    this.books = paramArrayOfMysteryBookRoot;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.MysteryBookList
 * JD-Core Version:    0.6.0
 */