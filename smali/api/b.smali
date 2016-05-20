.class public final Lcom/ushaqi/zhuishushenqi/api/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/ushaqi/zhuishushenqi/api/b;

.field private static b:Lcom/ushaqi/zhuishushenqi/api/ApiService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/b;->a:Lcom/ushaqi/zhuishushenqi/api/b;

    .line 6
    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/b;->b:Lcom/ushaqi/zhuishushenqi/api/ApiService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static a()Lcom/ushaqi/zhuishushenqi/api/b;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/ushaqi/zhuishushenqi/api/b;->a:Lcom/ushaqi/zhuishushenqi/api/b;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/api/b;-><init>()V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/b;->a:Lcom/ushaqi/zhuishushenqi/api/b;

    .line 18
    :cond_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/api/b;->a:Lcom/ushaqi/zhuishushenqi/api/b;

    return-object v0
.end method

.method public static b()Lcom/ushaqi/zhuishushenqi/api/ApiService;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/ushaqi/zhuishushenqi/api/b;->b:Lcom/ushaqi/zhuishushenqi/api/ApiService;

    if-nez v0, :cond_0

    .line 23
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/f;->a()Lcom/ushaqi/zhuishushenqi/api/f;

    move-result-object v0

    .line 24
    new-instance v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;

    invoke-direct {v1, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;-><init>(Lcom/ushaqi/zhuishushenqi/api/f;)V

    sput-object v1, Lcom/ushaqi/zhuishushenqi/api/b;->b:Lcom/ushaqi/zhuishushenqi/api/ApiService;

    .line 26
    :cond_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/api/b;->b:Lcom/ushaqi/zhuishushenqi/api/ApiService;

    return-object v0
.end method
