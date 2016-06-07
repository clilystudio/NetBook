.class public Lcom/ushaqi/zhuishushenqi/model/Splash;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1bac9099d551f2f3L


# instance fields
.field private _id:Ljava/lang/String;

.field private end:Ljava/util/Date;

.field private img3x4:Ljava/lang/String;

.field private insideLink:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private start:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 65
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/ushaqi/zhuishushenqi/model/Splash;

    if-nez v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/Splash;

    .line 69
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Splash;->get_id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Splash;->get_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/Splash;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getEnd()Ljava/util/Date;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Splash;->end:Ljava/util/Date;

    return-object v0
.end method

.method public getImg3x4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Splash;->img3x4:Ljava/lang/String;

    return-object v0
.end method

.method public getInsideLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Splash;->insideLink:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Splash;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Ljava/util/Date;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Splash;->start:Ljava/util/Date;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Splash;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/Splash;->get_id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/Splash;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setEnd(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Splash;->end:Ljava/util/Date;

    .line 61
    return-void
.end method

.method public setImg3x4(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Splash;->img3x4:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setInsideLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Splash;->insideLink:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Splash;->link:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setStart(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Splash;->start:Ljava/util/Date;

    .line 53
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Splash;->_id:Ljava/lang/String;

    .line 29
    return-void
.end method
