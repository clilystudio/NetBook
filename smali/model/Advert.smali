.class public abstract Lcom/ushaqi/zhuishushenqi/model/Advert;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x521424fff1ae58c1L


# instance fields
.field private data:Lcom/ushaqi/zhuishushenqi/model/AdvertData;

.field private position:Ljava/lang/String;

.field private read:Z

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canShowAtPosition(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Advert;->data:Lcom/ushaqi/zhuishushenqi/model/AdvertData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Advert;->data:Lcom/ushaqi/zhuishushenqi/model/AdvertData;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->getShowAt()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Advert;->data:Lcom/ushaqi/zhuishushenqi/model/AdvertData;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->getShowAt()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 68
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/ushaqi/zhuishushenqi/model/Advert;

    if-nez v0, :cond_1

    .line 69
    :cond_0
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    .line 71
    :cond_1
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/Advert;

    .line 72
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Advert;->data:Lcom/ushaqi/zhuishushenqi/model/AdvertData;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Advert;->get_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public getApkSize()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Advert;->data:Lcom/ushaqi/zhuishushenqi/model/AdvertData;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->getApkSize()I

    move-result v0

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Advert;->data:Lcom/ushaqi/zhuishushenqi/model/AdvertData;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->getDesc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlagType()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/Advert;->isRead()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    const-string v1, "promotion"

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    :cond_2
    const-string v1, "notice"

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getFullImg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/Advert;->data:Lcom/ushaqi/zhuishushenqi/model/AdvertData;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Advert;->data:Lcom/ushaqi/zhuishushenqi/model/AdvertData;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->getImg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInsideLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Advert;->data:Lcom/ushaqi/zhuishushenqi/model/AdvertData;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->getInsideLink()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Advert;->position:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Advert;->data:Lcom/ushaqi/zhuishushenqi/model/AdvertData;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->getPriority()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Advert;->data:Lcom/ushaqi/zhuishushenqi/model/AdvertData;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Advert;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Advert;->data:Lcom/ushaqi/zhuishushenqi/model/AdvertData;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Advert;->data:Lcom/ushaqi/zhuishushenqi/model/AdvertData;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->get_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Advert;->data:Lcom/ushaqi/zhuishushenqi/model/AdvertData;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->get_id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Advert;->data:Lcom/ushaqi/zhuishushenqi/model/AdvertData;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isApk()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Advert;->data:Lcom/ushaqi/zhuishushenqi/model/AdvertData;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->isApk()Z

    move-result v0

    return v0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/Advert;->read:Z

    return v0
.end method

.method public abstract processClick(Landroid/view/View;)V
.end method

.method public abstract recordClick(Landroid/view/View;)V
.end method

.method public abstract recordShow(Landroid/content/Context;)V
.end method

.method public setData(Lcom/ushaqi/zhuishushenqi/model/AdvertData;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Advert;->data:Lcom/ushaqi/zhuishushenqi/model/AdvertData;

    .line 35
    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Advert;->position:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setRead(Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/Advert;->read:Z

    .line 43
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Advert;->type:Ljava/lang/String;

    .line 51
    return-void
.end method
