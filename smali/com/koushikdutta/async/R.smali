.class final Lcom/koushikdutta/async/R;
.super Lcom/koushikdutta/async/U;
.source "SourceFile"


# instance fields
.field private b:Lcom/koushikdutta/async/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/S",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/koushikdutta/async/S;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/koushikdutta/async/S",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/U;-><init>(I)V

    .line 50
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length should be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p2, p0, Lcom/koushikdutta/async/R;->b:Lcom/koushikdutta/async/S;

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)Lcom/koushikdutta/async/U;
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lcom/koushikdutta/async/R;->a:I

    new-array v0, v0, [B

    .line 57
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/v;->a([B)V

    .line 58
    iget-object v1, p0, Lcom/koushikdutta/async/R;->b:Lcom/koushikdutta/async/S;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/S;->a(Ljava/lang/Object;)V

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method
