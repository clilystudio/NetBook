.class public Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "BookDlRecord"
.end annotation


# static fields
.field public static final END:I = 0x4

.field public static final IDLE:I = 0x0

.field public static final PAUSE:I = 0x3

.field public static final PENDING:I = 0x1

.field public static final PREPARE:I = 0x5

.field public static final RUN:I = 0x2


# instance fields
.field private author:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "author"
    .end annotation
.end field

.field private bookId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "bookId"
        unique = true
    .end annotation
.end field

.field private bookTitle:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "bookTitle"
    .end annotation
.end field

.field private created:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "created"
    .end annotation
.end field

.field private mode:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "mode"
    .end annotation
.end field

.field private progress:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "progress"
    .end annotation
.end field

.field private start:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "start"
    .end annotation
.end field

.field private status:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "status"
    .end annotation
.end field

.field private tocId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "tocId"
    .end annotation
.end field

.field private total:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "total"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->mode:I

    .line 61
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->progress:I

    .line 75
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->status:I

    .line 86
    return-void
.end method

.method public static containsTocInfo(Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;)Z
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->getBookTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;-><init>()V

    .line 124
    iput-object p0, v0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->bookId:Ljava/lang/String;

    .line 125
    iput-object p1, v0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->bookTitle:Ljava/lang/String;

    .line 126
    iput-object p2, v0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->author:Ljava/lang/String;

    .line 127
    iput-object p3, v0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->tocId:Ljava/lang/String;

    .line 128
    iput p4, v0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->mode:I

    .line 129
    iput p5, v0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->start:I

    .line 130
    iput p6, v0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->total:I

    .line 131
    iput p7, v0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->status:I

    .line 132
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->created:Ljava/util/Date;

    .line 133
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->save()Ljava/lang/Long;

    .line 134
    return-void
.end method

.method public static delete(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 155
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "bookId = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 156
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;
    .locals 4

    .prologue
    .line 89
    if-nez p0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "bookId = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;
    .locals 5

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "bookId = ? AND mode = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;

    goto :goto_0
.end method

.method public static getAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "created ASC"

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAllPause()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "status = ? "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAllPending()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 111
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "status = ? "

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "created ASC"

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAllPrepareAsc()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "status = ? "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "created ASC"

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAllRun()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "status = ? "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static reset(Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;II)V
    .locals 1

    .prologue
    .line 147
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->start:I

    .line 148
    iput p2, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->total:I

    .line 149
    const/4 v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->status:I

    .line 150
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->created:Ljava/util/Date;

    .line 151
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->save()Ljava/lang/Long;

    .line 152
    return-void
.end method

.method public static update(Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;Ljava/lang/String;IIII)V
    .locals 1

    .prologue
    .line 137
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->tocId:Ljava/lang/String;

    .line 138
    iput p2, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->mode:I

    .line 139
    iput p3, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->start:I

    .line 140
    iput p4, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->total:I

    .line 141
    iput p5, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->status:I

    .line 142
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->created:Ljava/util/Date;

    .line 143
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->save()Ljava/lang/Long;

    .line 144
    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getBookTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->bookTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->mode:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->progress:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->start:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->status:I

    return v0
.end method

.method public getTocId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->tocId:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->total:I

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->author:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setBookId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->bookId:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setBookTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->bookTitle:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->created:Ljava/util/Date;

    .line 220
    return-void
.end method

.method public setMode(I)V
    .locals 0

    .prologue
    .line 195
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->mode:I

    .line 196
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .prologue
    .line 238
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->progress:I

    .line 239
    return-void
.end method

.method public setStart(I)V
    .locals 0

    .prologue
    .line 203
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->start:I

    .line 204
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 171
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->status:I

    .line 172
    return-void
.end method

.method public setTocId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->tocId:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .prologue
    .line 211
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookDlRecord;->total:I

    .line 212
    return-void
.end method
