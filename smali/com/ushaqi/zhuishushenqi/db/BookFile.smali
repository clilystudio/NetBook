.class public Lcom/ushaqi/zhuishushenqi/db/BookFile;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "BookFile"
.end annotation


# instance fields
.field public filePath:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "file_path"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "name"
    .end annotation
.end field

.field public progress:F
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "progress"
    .end annotation
.end field

.field public progressChapterIndex:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "progress_chapter_index"
    .end annotation
.end field

.field public progressCharOffset:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "progress_char_offset"
    .end annotation
.end field

.field public size:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "size"
    .end annotation
.end field

.field public top:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "top"
    .end annotation
.end field

.field public updated:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "updated"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 50
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->name:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->a(JZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->size:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->filePath:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 139
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/ushaqi/zhuishushenqi/db/BookFile;

    if-nez v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    check-cast p1, Lcom/ushaqi/zhuishushenqi/db/BookFile;

    .line 143
    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/db/BookFile;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/db/BookFile;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIntSize()I
    .locals 1

    .prologue
    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getSize()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 95
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPathAndName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->progress:F

    return v0
.end method

.method public getProgressChapterIndex()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->progressChapterIndex:I

    return v0
.end method

.method public getProgressCharOffset()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->progressCharOffset:I

    return v0
.end method

.method public getReadableProgress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->progress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 129
    const-string v0, "0%"

    .line 133
    :goto_0
    return-object v0

    .line 131
    :cond_0
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->progress:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 132
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 133
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTop()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->top:Z

    return v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->filePath:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->name:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->progress:F

    .line 69
    return-void
.end method

.method public setProgressChapterIndex(I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->progressChapterIndex:I

    .line 77
    return-void
.end method

.method public setProgressCharOffset(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->progressCharOffset:I

    .line 85
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->size:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setTop(Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->top:Z

    .line 61
    return-void
.end method

.method public setUpdated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookFile;->updated:Ljava/util/Date;

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
