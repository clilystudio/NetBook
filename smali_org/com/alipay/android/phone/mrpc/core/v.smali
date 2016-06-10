.class public final Lcom/alipay/android/phone/mrpc/core/v;
.super Lcom/alipay/android/phone/mrpc/core/z;


# instance fields
.field private b:Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;ILjava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/z;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/v;->b:Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;

    iput-object p4, p0, Lcom/alipay/android/phone/mrpc/core/v;->a:[B

    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/v;->b:Lcom/alipay/android/phone/mrpc/core/HttpUrlHeader;

    return-object v0
.end method
