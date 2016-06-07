.class final Lcom/koushikdutta/async/http/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/b/b;


# instance fields
.field private synthetic a:Lcom/koushikdutta/async/http/b/h;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/b/h;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/koushikdutta/async/http/b/i;->a:Lcom/koushikdutta/async/http/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 121
    const-string v0, "no-cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const-string v0, "no-store"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    const-string v0, "max-age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-static {p2}, Lcom/koushikdutta/async/http/b/a;->a(Ljava/lang/String;)I

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const-string v0, "s-maxage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    invoke-static {p2}, Lcom/koushikdutta/async/http/b/a;->a(Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :cond_2
    const-string v0, "public"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    const-string v0, "must-revalidate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto :goto_0
.end method
