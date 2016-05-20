.class public Lcom/ushaqi/zhuishushenqi/model/Toc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2d7bfbca4453d745L


# instance fields
.field private _id:Ljava/lang/String;

.field private chapters:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

.field private host:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private realChapter:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/Toc;->realChapter:Z

    return-void
.end method


# virtual methods
.method public getChapters()[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Toc;->chapters:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Toc;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Toc;->name:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Toc;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public isRealChapter()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/Toc;->realChapter:Z

    return v0
.end method

.method public setChapters([Lcom/ushaqi/zhuishushenqi/model/ChapterLink;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Toc;->chapters:[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    .line 40
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Toc;->host:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Toc;->name:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setRealChapter(Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/Toc;->realChapter:Z

    .line 64
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Toc;->_id:Ljava/lang/String;

    .line 32
    return-void
.end method
