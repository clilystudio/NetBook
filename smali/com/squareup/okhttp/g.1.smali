.class final Lcom/squareup/okhttp/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/y;


# instance fields
.field private final a:I

.field private final b:Z

.field private synthetic c:Lcom/squareup/okhttp/f;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/f;ILcom/squareup/okhttp/C;Z)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/squareup/okhttp/g;->c:Lcom/squareup/okhttp/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput p2, p0, Lcom/squareup/okhttp/g;->a:I

    .line 212
    iput-boolean p4, p0, Lcom/squareup/okhttp/g;->b:Z

    .line 213
    return-void
.end method


# virtual methods
.method public final a(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/I;
    .locals 4

    .prologue
    .line 224
    iget v0, p0, Lcom/squareup/okhttp/g;->a:I

    iget-object v1, p0, Lcom/squareup/okhttp/g;->c:Lcom/squareup/okhttp/f;

    invoke-static {v1}, Lcom/squareup/okhttp/f;->b(Lcom/squareup/okhttp/f;)Lcom/squareup/okhttp/A;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/A;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 226
    new-instance v0, Lcom/squareup/okhttp/g;

    iget-object v1, p0, Lcom/squareup/okhttp/g;->c:Lcom/squareup/okhttp/f;

    iget v2, p0, Lcom/squareup/okhttp/g;->a:I

    add-int/lit8 v2, v2, 0x1

    iget-boolean v3, p0, Lcom/squareup/okhttp/g;->b:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/squareup/okhttp/g;-><init>(Lcom/squareup/okhttp/f;ILcom/squareup/okhttp/C;Z)V

    .line 227
    iget-object v0, p0, Lcom/squareup/okhttp/g;->c:Lcom/squareup/okhttp/f;

    invoke-static {v0}, Lcom/squareup/okhttp/f;->b(Lcom/squareup/okhttp/f;)Lcom/squareup/okhttp/A;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/A;->u()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/g;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/K;

    invoke-interface {v0}, Landroid/support/design/widget/K;->j()Lcom/squareup/okhttp/I;

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/g;->c:Lcom/squareup/okhttp/f;

    iget-boolean v1, p0, Lcom/squareup/okhttp/g;->b:Z

    invoke-virtual {v0, p1, v1}, Lcom/squareup/okhttp/f;->a(Lcom/squareup/okhttp/C;Z)Lcom/squareup/okhttp/I;

    move-result-object v0

    goto :goto_0
.end method
