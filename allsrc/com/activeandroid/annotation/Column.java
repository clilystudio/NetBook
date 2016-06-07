package com.activeandroid.annotation;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.FIELD})
public @interface Column
{
  public abstract boolean index();

  public abstract String[] indexGroups();

  public abstract int length();

  public abstract String name();

  public abstract boolean notNull();

  public abstract Column.ForeignKeyAction onDelete();

  public abstract Column.ConflictAction onNullConflict();

  public abstract Column.ConflictAction onUniqueConflict();

  public abstract Column.ConflictAction[] onUniqueConflicts();

  public abstract Column.ForeignKeyAction onUpdate();

  public abstract boolean unique();

  public abstract String[] uniqueGroups();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.activeandroid.annotation.Column
 * JD-Core Version:    0.6.0
 */