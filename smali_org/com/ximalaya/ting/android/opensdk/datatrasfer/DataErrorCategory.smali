.class public Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mErrorCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error_code"
    .end annotation
.end field

.field private mErrorDesc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error_desc"
    .end annotation
.end field

.field private mErrorNo:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error_no"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;->mErrorDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorNo()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;->mErrorNo:I

    return v0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;->mErrorCode:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setErrorDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;->mErrorDesc:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setErrorNo(I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/DataErrorCategory;->mErrorNo:I

    .line 46
    return-void
.end method
