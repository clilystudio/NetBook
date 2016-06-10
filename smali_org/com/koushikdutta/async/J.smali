.class final Lcom/koushikdutta/async/J;
.super Lcom/koushikdutta/async/U;
.source "SourceFile"


# instance fields
.field private synthetic b:Lcom/koushikdutta/async/I;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/I;I)V
    .locals 1

    .prologue
    .line 174
    iput-object p1, p0, Lcom/koushikdutta/async/J;->b:Lcom/koushikdutta/async/I;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/U;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/koushikdutta/async/y;Lcom/koushikdutta/async/v;)Lcom/koushikdutta/async/U;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcom/koushikdutta/async/J;->b:Lcom/koushikdutta/async/I;

    invoke-static {v0}, Lcom/koushikdutta/async/I;->a(Lcom/koushikdutta/async/I;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    return-object v1
.end method
