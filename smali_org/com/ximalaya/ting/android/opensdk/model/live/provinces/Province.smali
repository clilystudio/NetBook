.class public Lcom/ximalaya/ting/android/opensdk/model/live/provinces/Province;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private createdAt:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field private provinceCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "province_code"
    .end annotation
.end field

.field private provinceId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private provinceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "province_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreatedAt()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/provinces/Province;->createdAt:I

    return v0
.end method

.method public getProvinceCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/provinces/Province;->provinceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getProvinceId()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/provinces/Province;->provinceId:J

    return-wide v0
.end method

.method public getProvinceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/provinces/Province;->provinceName:Ljava/lang/String;

    return-object v0
.end method

.method public setCreatedAt(I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/provinces/Province;->createdAt:I

    .line 77
    return-void
.end method

.method public setProvinceCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/provinces/Province;->provinceCode:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setProvinceId(J)V
    .locals 1

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/provinces/Province;->provinceId:J

    .line 47
    return-void
.end method

.method public setProvinceName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/provinces/Province;->provinceName:Ljava/lang/String;

    .line 67
    return-void
.end method
