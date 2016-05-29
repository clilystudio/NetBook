package com.clilystudio.app.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.arcsoft.hpay100.a.a;

import java.io.File;
import java.util.Date;

@Table(name = "BookFile")
public class BookFile extends Model {

    @Column(name = "file_path")
    public String filePath;

    @Column(name = "name")
    public String name;

    @Column(name = "progress")
    public float progress;

    @Column(name = "progress_chapter_index")
    public int progressChapterIndex;

    @Column(name = "progress_char_offset")
    public int progressCharOffset;

    @Column(name = "size")
    public String size;

    @Column(name = "top")
    public boolean top;

    @Column(name = "updated")
    public Date updated;

    public BookFile() {
    }

    public BookFile(File paramFile) {
        this.name = paramFile.getName();
        this.size = a.a(paramFile.length(), true);
        this.filePath = paramFile.getPath();
    }

    public boolean equals(Object paramObject) {
        if ((paramObject == null) || (!(paramObject instanceof BookFile))) ;
        BookFile localBookFile;
        do {
            return false;
            localBookFile = (BookFile) paramObject;
        }
        while ((localBookFile.name == null) || (!localBookFile.name.equals(this.name)));
        return true;
    }

    public String getFilePath() {
        return this.filePath;
    }

    public int getIntSize() {
        try {
            int i = Integer.parseInt(getSize());
            return i;
        } catch (Exception localException) {
        }
        return 0;
    }

    public String getName() {
        return this.name;
    }

    public String getPathAndName() {
        return this.filePath;
    }

    public float getProgress() {
        return this.progress;
    }

    public int getProgressChapterIndex() {
        return this.progressChapterIndex;
    }

    public int getProgressCharOffset() {
        return this.progressCharOffset;
    }

    public String getReadableProgress() {
        if (this.progress == 0.0F)
            return "0%";
        int i = (int) (100.0F * this.progress);
        if (i == 0)
            i = 1;
        return i + "%";
    }

    public String getSize() {
        return this.size;
    }

    public Date getUpdated() {
        return this.updated;
    }

    public int hashCode() {
        if (this.name != null)
            return this.name.hashCode();
        return 0;
    }

    public boolean isTop() {
        return this.top;
    }

    public void setFilePath(String paramString) {
        this.filePath = paramString;
    }

    public void setName(String paramString) {
        this.name = paramString;
    }

    public void setProgress(float paramFloat) {
        this.progress = paramFloat;
    }

    public void setProgressChapterIndex(int paramInt) {
        this.progressChapterIndex = paramInt;
    }

    public void setProgressCharOffset(int paramInt) {
        this.progressCharOffset = paramInt;
    }

    public void setSize(String paramString) {
        this.size = paramString;
    }

    public void setTop(boolean paramBoolean) {
        this.top = paramBoolean;
    }

    public void setUpdated(Date paramDate) {
        this.updated = paramDate;
    }

    public String toString() {
        return getName();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.db.BookFile
 * JD-Core Version:    0.6.2
 */