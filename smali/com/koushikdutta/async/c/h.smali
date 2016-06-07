.class final Lcom/koushikdutta/async/c/h;
.super Lcom/koushikdutta/async/b/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/b/h",
        "<",
        "Ljava/lang/String;",
        "Lcom/koushikdutta/async/v;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/c/g;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p2, p0, Lcom/koushikdutta/async/c/h;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/koushikdutta/async/b/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    check-cast p1, Lcom/koushikdutta/async/v;

    .line 1023
    iget-object v0, p0, Lcom/koushikdutta/async/c/h;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/c/h;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/v;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 1128
    invoke-virtual {p0, v1, v0}, Lcom/koushikdutta/async/b/g;->b(Ljava/lang/Exception;Ljava/lang/Object;)Z

    .line 20
    return-void

    :cond_0
    move-object v0, v1

    .line 1023
    goto :goto_0
.end method
