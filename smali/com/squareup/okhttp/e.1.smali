.class public final Lcom/squareup/okhttp/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:I

.field e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput v0, p0, Lcom/squareup/okhttp/e;->b:I

    .line 276
    iput v0, p0, Lcom/squareup/okhttp/e;->c:I

    .line 277
    iput v0, p0, Lcom/squareup/okhttp/e;->d:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/squareup/okhttp/d;
    .locals 2

    .prologue
    .line 363
    new-instance v0, Lcom/squareup/okhttp/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/d;-><init>(Lcom/squareup/okhttp/e;B)V

    return-object v0
.end method
