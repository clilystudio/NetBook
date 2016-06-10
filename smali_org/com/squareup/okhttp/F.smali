.class final Lcom/squareup/okhttp/F;
.super Lcom/squareup/okhttp/E;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/squareup/okhttp/z;

.field private synthetic b:Lokio/ByteString;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/z;Lokio/ByteString;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/squareup/okhttp/F;->a:Lcom/squareup/okhttp/z;

    iput-object p2, p0, Lcom/squareup/okhttp/F;->b:Lokio/ByteString;

    invoke-direct {p0}, Lcom/squareup/okhttp/E;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/squareup/okhttp/z;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/squareup/okhttp/F;->a:Lcom/squareup/okhttp/z;

    return-object v0
.end method

.method public final a(Lokio/h;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/squareup/okhttp/F;->b:Lokio/ByteString;

    invoke-interface {p1, v0}, Lokio/h;->b(Lokio/ByteString;)Lokio/h;

    .line 72
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/squareup/okhttp/F;->b:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
