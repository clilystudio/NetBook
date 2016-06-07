.class final Lcom/koushikdutta/async/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/S;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/S",
        "<[B>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/koushikdutta/async/I;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/I;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/koushikdutta/async/O;->a:Lcom/koushikdutta/async/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 214
    check-cast p1, [B

    .line 1217
    iget-object v0, p0, Lcom/koushikdutta/async/O;->a:Lcom/koushikdutta/async/I;

    invoke-static {v0}, Lcom/koushikdutta/async/I;->a(Lcom/koushikdutta/async/I;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method
