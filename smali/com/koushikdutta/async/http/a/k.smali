.class public final Lcom/koushikdutta/async/http/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/a/a",
        "<",
        "Lcom/koushikdutta/async/http/Multimap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/koushikdutta/async/http/Multimap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/a/k;Lcom/koushikdutta/async/http/Multimap;)Lcom/koushikdutta/async/http/Multimap;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/k;->a:Lcom/koushikdutta/async/http/Multimap;

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/a/a;)V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/koushikdutta/async/v;

    invoke-direct {v0}, Lcom/koushikdutta/async/v;-><init>()V

    .line 68
    new-instance v1, Lcom/koushikdutta/async/http/a/l;

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/async/http/a/l;-><init>(Lcom/koushikdutta/async/http/a/k;Lcom/koushikdutta/async/v;)V

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/y;->a(Lcom/koushikdutta/async/a/b;)V

    .line 74
    new-instance v1, Lcom/koushikdutta/async/http/a/m;

    invoke-direct {v1, p0, p2, v0}, Lcom/koushikdutta/async/http/a/m;-><init>(Lcom/koushikdutta/async/http/a/k;Lcom/koushikdutta/async/a/a;Lcom/koushikdutta/async/v;)V

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/y;->b(Lcom/koushikdutta/async/a/a;)V

    .line 90
    return-void
.end method

.method public final a_()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcom/koushikdutta/async/http/Multimap;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/k;->a:Lcom/koushikdutta/async/http/Multimap;

    return-object v0
.end method
