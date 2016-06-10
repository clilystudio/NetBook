.class public Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 35
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->mErrorCode:I

    .line 36
    iput-object p2, p0, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->mErrorMessage:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->mErrorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorCode(I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->mErrorCode:I

    .line 47
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException;->mErrorMessage:Ljava/lang/String;

    .line 57
    return-void
.end method
