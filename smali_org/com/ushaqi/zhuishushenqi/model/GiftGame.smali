.class public Lcom/ushaqi/zhuishushenqi/model/GiftGame;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private androidLink:Ljava/lang/String;

.field private androidPackageName:Ljava/lang/String;

.field public androidSize:I

.field private downloadStatus:I

.field public followers:I

.field public gifts:[Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;

.field public icon:Ljava/lang/String;

.field private localFileUri:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->androidLink:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->androidPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadStatus()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->downloadStatus:I

    return v0
.end method

.method public getLocalFileUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->localFileUri:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->name:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAndroidLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->androidLink:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setAndroidPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->androidPackageName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setDownloadStatus(I)V
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->downloadStatus:I

    .line 30
    return-void
.end method

.method public setLocalFileUri(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->localFileUri:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->name:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->_id:Ljava/lang/String;

    .line 46
    return-void
.end method
