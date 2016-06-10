.class public Lcom/ushaqi/zhuishushenqi/model/Game;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x73a90b7f39011a23L


# instance fields
.field private _id:Ljava/lang/String;

.field private activityFlag:Z

.field private androidLink:Ljava/lang/String;

.field private androidPackageName:Ljava/lang/String;

.field private androidSize:I

.field private banner:Ljava/lang/String;

.field private cat:Ljava/lang/String;

.field private cover:Ljava/lang/String;

.field private downloadStatus:I

.field private firsthand:Z

.field private followers:I

.field private giftFlag:Z

.field private h5MainPromo:Z

.field private hotFlag:Z

.field private icon:Ljava/lang/String;

.field private iconId:I

.field private intro:Ljava/lang/String;

.field private localFileUri:Ljava/lang/String;

.field private mainPromo:Z

.field private mainPromoInfo:Lcom/ushaqi/zhuishushenqi/model/Game$MainPromoInfo;

.field private name:Ljava/lang/String;

.field private pictures:[Ljava/lang/String;

.field private recommend:Z

.field private shortIntro:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    return-void
.end method


# virtual methods
.method public getAndroidLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->androidLink:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->androidPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidSize()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->androidSize:I

    return v0
.end method

.method public getBanner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->banner:Ljava/lang/String;

    return-object v0
.end method

.method public getCat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->cat:Ljava/lang/String;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadStatus()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->downloadStatus:I

    return v0
.end method

.method public getFollowers()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->followers:I

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->iconId:I

    return v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalFileUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->localFileUri:Ljava/lang/String;

    return-object v0
.end method

.method public getMainPromoInfo()Lcom/ushaqi/zhuishushenqi/model/Game$MainPromoInfo;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->mainPromoInfo:Lcom/ushaqi/zhuishushenqi/model/Game$MainPromoInfo;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPictures()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->pictures:[Ljava/lang/String;

    return-object v0
.end method

.method public getShortIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->shortIntro:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public isActivityFlag()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->activityFlag:Z

    return v0
.end method

.method public isFirsthand()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->firsthand:Z

    return v0
.end method

.method public isGiftFlag()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->giftFlag:Z

    return v0
.end method

.method public isH5MainPromo()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->h5MainPromo:Z

    return v0
.end method

.method public isHotFlag()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->hotFlag:Z

    return v0
.end method

.method public isMainPromo()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->mainPromo:Z

    return v0
.end method

.method public isRecommend()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->recommend:Z

    return v0
.end method

.method public setActivityFlag(Z)V
    .locals 0

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->activityFlag:Z

    .line 206
    return-void
.end method

.method public setAndroidLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->androidLink:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setAndroidPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->androidPackageName:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setAndroidSize(I)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->androidSize:I

    .line 91
    return-void
.end method

.method public setBanner(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->banner:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setCat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->cat:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->cover:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setDownloadStatus(I)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->downloadStatus:I

    .line 131
    return-void
.end method

.method public setFirsthand(Z)V
    .locals 0

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->firsthand:Z

    .line 166
    return-void
.end method

.method public setFollowers(I)V
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->followers:I

    .line 115
    return-void
.end method

.method public setGiftFlag(Z)V
    .locals 0

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->giftFlag:Z

    .line 214
    return-void
.end method

.method public setH5MainPromo(Z)V
    .locals 0

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->h5MainPromo:Z

    .line 226
    return-void
.end method

.method public setHotFlag(Z)V
    .locals 0

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->hotFlag:Z

    .line 198
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->icon:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setIconId(I)V
    .locals 0

    .prologue
    .line 154
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->iconId:I

    .line 155
    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->intro:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setLocalFileUri(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->localFileUri:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setMainPromo(Z)V
    .locals 0

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->mainPromo:Z

    .line 234
    return-void
.end method

.method public setMainPromoInfo(Lcom/ushaqi/zhuishushenqi/model/Game$MainPromoInfo;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->mainPromoInfo:Lcom/ushaqi/zhuishushenqi/model/Game$MainPromoInfo;

    .line 238
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->name:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setPictures([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->pictures:[Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setRecommend(Z)V
    .locals 0

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->recommend:Z

    .line 174
    return-void
.end method

.method public setShortIntro(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->shortIntro:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game;->_id:Ljava/lang/String;

    .line 51
    return-void
.end method
