.class final Lu/aly/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/bU;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Lu/aly/Y;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lu/aly/bT;
    .locals 2

    .prologue
    .line 1301
    new-instance v0, Lu/aly/X;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/X;-><init>(B)V

    .line 1
    return-object v0
.end method
