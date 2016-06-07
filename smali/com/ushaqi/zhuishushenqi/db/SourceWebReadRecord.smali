.class public Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "SourceWebReadRecord"
.end annotation


# instance fields
.field private _id:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "_id"
        unique = true
    .end annotation
.end field

.field private bookId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "bookId"
    .end annotation
.end field

.field private chapterIndex:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "chapterIndex"
    .end annotation
.end field

.field private cmd:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "cmd"
    .end annotation
.end field

.field private readMode:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "readMode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;->readMode:I

    .line 37
    return-void
.end method

.method public static create(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;-><init>()V

    .line 41
    iput-object p0, v0, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;->bookId:Ljava/lang/String;

    .line 42
    iput p1, v0, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;->readMode:I

    .line 43
    iput p2, v0, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;->chapterIndex:I

    .line 44
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;->save()Ljava/lang/Long;

    .line 45
    return-void
.end method

.method public static create(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;-><init>()V

    .line 52
    iput-object p0, v0, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;->bookId:Ljava/lang/String;

    .line 53
    iput p1, v0, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;->readMode:I

    .line 54
    iput-object p2, v0, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;->cmd:Ljava/lang/String;

    .line 55
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;->save()Ljava/lang/Long;

    .line 56
    return-void
.end method

.method public static get(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;
    .locals 5

    .prologue
    .line 59
    if-nez p0, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "(bookId = ?) AND (readMode = ?)"

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

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;

    goto :goto_0
.end method


# virtual methods
.method public getBookId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getChapterIndex()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;->chapterIndex:I

    return v0
.end method

.method public getCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;->cmd:Ljava/lang/String;

    return-object v0
.end method

.method public getReadMode()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;->readMode:I

    return v0
.end method

.method public setBookId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;->bookId:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setChapterIndex(I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;->chapterIndex:I

    .line 79
    return-void
.end method

.method public setCmd(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;->cmd:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setReadMode(I)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/SourceWebReadRecord;->readMode:I

    .line 87
    return-void
.end method
