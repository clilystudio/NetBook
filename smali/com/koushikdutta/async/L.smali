.class final Lcom/koushikdutta/async/L;
.super Lcom/koushikdutta/async/U;
.source "SourceFile"


# instance fields
.field private synthetic b:Lcom/koushikdutta/async/I;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/I;I)V
    .locals 1

    .prologue
    .line 190
    iput-object p1, p0, Lcom/koushikdutta/async/L;->b:Lcom/koushikdutta/async/I;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/U;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)Lcom/koushikdutta/async/U;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/koushikdutta/async/L;->b:Lcom/koushikdutta/async/I;

    invoke-static {v0}, Lcom/koushikdutta/async/I;->a(Lcom/koushikdutta/async/I;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/koushikdutta/async/v;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    const/4 v0, 0x0

    return-object v0
.end method
