.class final Lcom/squareup/okhttp/G;
.super Lcom/squareup/okhttp/E;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/squareup/okhttp/z;

.field private synthetic b:I

.field private synthetic c:[B

.field private synthetic d:I


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/z;I[BI)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/squareup/okhttp/G;->a:Lcom/squareup/okhttp/z;

    iput p2, p0, Lcom/squareup/okhttp/G;->b:I

    iput-object p3, p0, Lcom/squareup/okhttp/G;->c:[B

    iput p4, p0, Lcom/squareup/okhttp/G;->d:I

    invoke-direct {p0}, Lcom/squareup/okhttp/E;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/squareup/okhttp/z;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/squareup/okhttp/G;->a:Lcom/squareup/okhttp/z;

    return-object v0
.end method

.method public final a(Lokio/h;)V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/squareup/okhttp/G;->c:[B

    iget v1, p0, Lcom/squareup/okhttp/G;->d:I

    iget v2, p0, Lcom/squareup/okhttp/G;->b:I

    invoke-interface {p1, v0, v1, v2}, Lokio/h;->c([BII)Lokio/h;

    .line 97
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcom/squareup/okhttp/G;->b:I

    int-to-long v0, v0

    return-wide v0
.end method
