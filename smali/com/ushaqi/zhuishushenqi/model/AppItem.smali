.class public Lcom/ushaqi/zhuishushenqi/model/AppItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected _id:Ljava/lang/String;

.field protected activateRequire:Ljava/lang/String;

.field protected created:Ljava/util/Date;

.field protected downloadCount:I

.field protected downloadStatus:I

.field protected download_link:Ljava/lang/String;

.field protected icon:Ljava/lang/String;

.field protected intro:Ljava/lang/String;

.field protected localFileUri:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected packageName:Ljava/lang/String;

.field protected size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/Advert;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Advert;->get_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->_id:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->download_link:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getApkSize()I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->size:I

    .line 36
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->name:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getActivateRequire()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->activateRequire:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadCount()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->downloadCount:I

    return v0
.end method

.method public getDownloadStatus()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->downloadStatus:I

    return v0
.end method

.method public getDownload_link()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->download_link:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->download_link:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFormatedSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->getSize()I

    move-result v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullIcon()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalFileUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->localFileUri:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->size:I

    return v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setActivateRequire(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->activateRequire:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setDownloadCount(I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->downloadCount:I

    .line 101
    return-void
.end method

.method public setDownloadStatus(I)V
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->downloadStatus:I

    .line 117
    return-void
.end method

.method public setDownload_link(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->download_link:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->icon:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->intro:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setLocalFileUri(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->localFileUri:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->name:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->packageName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setSize(I)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->size:I

    .line 89
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/AppItem;->_id:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
