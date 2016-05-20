.class public Lcom/ushaqi/zhuishushenqi/model/AdvertData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _id:Ljava/lang/String;

.field private apkSize:I

.field private desc:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private insideLink:Ljava/lang/String;

.field private isApk:Z

.field private priority:I

.field private showAt:[Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApkSize()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->apkSize:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getInsideLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->insideLink:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->priority:I

    return v0
.end method

.method public getShowAt()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->showAt:[Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public isApk()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->isApk:Z

    return v0
.end method

.method public setApk(Z)V
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->isApk:Z

    .line 90
    return-void
.end method

.method public setApkSize(I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->apkSize:I

    .line 82
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->desc:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->img:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setInsideLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->insideLink:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setIsApk(Z)V
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->isApk:Z

    .line 25
    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->priority:I

    .line 98
    return-void
.end method

.method public setShowAt([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->showAt:[Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->title:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->type:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->url:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AdvertData;->_id:Ljava/lang/String;

    .line 74
    return-void
.end method
