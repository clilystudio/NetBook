.class final Lcom/koushikdutta/async/http/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/b/b;


# instance fields
.field private synthetic a:Lcom/koushikdutta/async/http/b/a;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/b/a;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/koushikdutta/async/http/b/g;->a:Lcom/koushikdutta/async/http/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    const-string v0, "no-cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const-string v0, "max-age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-static {p2}, Lcom/koushikdutta/async/http/b/a;->a(Ljava/lang/String;)I

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string v0, "max-stale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-static {p2}, Lcom/koushikdutta/async/http/b/a;->a(Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :cond_2
    const-string v0, "min-fresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    invoke-static {p2}, Lcom/koushikdutta/async/http/b/a;->a(Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_3
    const-string v0, "only-if-cached"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto :goto_0
.end method
