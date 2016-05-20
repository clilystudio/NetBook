.class public Lcom/ushaqi/zhuishushenqi/model/TxtFileObject;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lcom/ushaqi/zhuishushenqi/db/BookFile;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 34
    new-instance v2, Lcom/activeandroid/query/Select;

    invoke-direct {v2}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v3, Lcom/ushaqi/zhuishushenqi/db/BookFile;

    invoke-virtual {v2, v3}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v2

    const-string v3, "name = ?"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v2

    invoke-virtual {v2}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v2

    .line 35
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    :goto_0
    return v0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->save()Ljava/lang/Long;

    move v0, v1

    .line 39
    goto :goto_0
.end method

.method public static delete(Lcom/ushaqi/zhuishushenqi/db/BookFile;)V
    .locals 5

    .prologue
    .line 49
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookFile;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "file_path = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getFilePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 50
    return-void
.end method

.method public static getProgress(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookFile;
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/model/TxtFileObject;->getTxtFiles()Ljava/util/List;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookFile;

    .line 65
    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->filePath:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTxtFile(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookFile;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookFile;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "file_path = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 21
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookFile;

    .line 23
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTxtFiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookFile;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static remove(Lcom/ushaqi/zhuishushenqi/db/BookFile;)V
    .locals 5

    .prologue
    .line 44
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookFile;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "name = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 45
    return-void
.end method

.method public static saveTxtFiles(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookFile;

    .line 29
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->save()Ljava/lang/Long;

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public static updateProgress(Lcom/ushaqi/zhuishushenqi/db/BookFile;)V
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/model/TxtFileObject;->getTxtFile(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookFile;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getProgress()F

    move-result v1

    iput v1, v0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->progress:F

    .line 56
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getProgressChapterIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->setProgressChapterIndex(I)V

    .line 57
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getProgressCharOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->setProgressCharOffset(I)V

    .line 58
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->save()Ljava/lang/Long;

    .line 60
    :cond_0
    return-void
.end method
