package com.clilystudio.netbook.model;

public class BookListRoot
{
  private CategoryBook[] books;
  private boolean ok;

  public CategoryBook[] getBooks()
  {
    return this.books;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setBooks(CategoryBook[] paramArrayOfCategoryBook)
  {
    this.books = paramArrayOfCategoryBook;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.BookListRoot
 * JD-Core Version:    0.6.0
 */