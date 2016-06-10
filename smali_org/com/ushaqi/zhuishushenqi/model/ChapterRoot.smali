.class public Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private chapter:Lcom/ushaqi/zhuishushenqi/model/Chapter;

.field private ok:Z

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChapter()Lcom/ushaqi/zhuishushenqi/model/Chapter;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->chapter:Lcom/ushaqi/zhuishushenqi/model/Chapter;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->status:I

    return v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->ok:Z

    return v0
.end method

.method public setChapter(Lcom/ushaqi/zhuishushenqi/model/Chapter;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->chapter:Lcom/ushaqi/zhuishushenqi/model/Chapter;

    .line 29
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->ok:Z

    .line 21
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->status:I

    .line 37
    return-void
.end method
