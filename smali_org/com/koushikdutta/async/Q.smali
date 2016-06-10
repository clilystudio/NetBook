.class final Lcom/koushikdutta/async/Q;
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
    .line 228
    iput-object p1, p0, Lcom/koushikdutta/async/Q;->a:Lcom/koushikdutta/async/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 228
    check-cast p1, [B

    .line 1231
    iget-object v0, p0, Lcom/koushikdutta/async/Q;->a:Lcom/koushikdutta/async/I;

    invoke-static {v0}, Lcom/koushikdutta/async/I;->a(Lcom/koushikdutta/async/I;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method
