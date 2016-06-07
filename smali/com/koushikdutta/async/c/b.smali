.class final Lcom/koushikdutta/async/c/b;
.super Lcom/koushikdutta/async/b/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/b/g",
        "<",
        "Lcom/koushikdutta/async/v;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/koushikdutta/async/y;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/c/a;Lcom/koushikdutta/async/y;)V
    .locals 0

    .prologue
    .line 19
    iput-object p2, p0, Lcom/koushikdutta/async/c/b;->a:Lcom/koushikdutta/async/y;

    invoke-direct {p0}, Lcom/koushikdutta/async/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/koushikdutta/async/c/b;->a:Lcom/koushikdutta/async/y;

    invoke-interface {v0}, Lcom/koushikdutta/async/y;->c()V

    .line 23
    return-void
.end method
