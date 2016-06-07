.class public Lcom/ushaqi/zhuishushenqi/model/MhdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private author:Ljava/lang/String;

.field private bigbookid:Ljava/lang/String;

.field private clickrate:Ljava/lang/String;

.field private coverurl:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private position:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MhdInfo;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBigbookid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MhdInfo;->bigbookid:Ljava/lang/String;

    return-object v0
.end method

.method public getClickrate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MhdInfo;->clickrate:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MhdInfo;->coverurl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MhdInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MhdInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/MhdInfo;->position:I

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MhdInfo;->author:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setBigbookid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MhdInfo;->bigbookid:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setClickrate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MhdInfo;->clickrate:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setCoverurl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MhdInfo;->coverurl:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MhdInfo;->description:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MhdInfo;->name:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/MhdInfo;->position:I

    .line 33
    return-void
.end method
