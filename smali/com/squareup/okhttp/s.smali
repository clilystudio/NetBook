.class public final Lcom/squareup/okhttp/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/squareup/okhttp/z;


# instance fields
.field private final b:Lokio/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "application/x-www-form-urlencoded"

    .line 26
    invoke-static {v0}, Lcom/squareup/okhttp/z;->a(Ljava/lang/String;)Lcom/squareup/okhttp/z;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/s;->a:Lcom/squareup/okhttp/z;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lokio/f;

    invoke-direct {v0}, Lokio/f;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/s;->b:Lokio/f;

    return-void
.end method


# virtual methods
.method public final a()Lcom/squareup/okhttp/E;
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/squareup/okhttp/s;->b:Lokio/f;

    invoke-virtual {v0}, Lokio/f;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Form encoded body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    sget-object v0, Lcom/squareup/okhttp/s;->a:Lcom/squareup/okhttp/z;

    iget-object v1, p0, Lcom/squareup/okhttp/s;->b:Lokio/f;

    invoke-virtual {v1}, Lokio/f;->q()Lokio/ByteString;

    move-result-object v1

    .line 1061
    new-instance v2, Lcom/squareup/okhttp/F;

    invoke-direct {v2, v0, v1}, Lcom/squareup/okhttp/F;-><init>(Lcom/squareup/okhttp/z;Lokio/ByteString;)V

    .line 60
    return-object v2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/s;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 32
    iget-object v0, p0, Lcom/squareup/okhttp/s;->b:Lokio/f;

    invoke-virtual {v0}, Lokio/f;->b()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/squareup/okhttp/s;->b:Lokio/f;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lokio/f;->b(I)Lokio/f;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/s;->b:Lokio/f;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, " \"\'<>#&="

    move-object v1, p1

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/squareup/okhttp/w;->a(Lokio/f;Ljava/lang/String;IILjava/lang/String;ZZ)V

    .line 37
    iget-object v0, p0, Lcom/squareup/okhttp/s;->b:Lokio/f;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lokio/f;->b(I)Lokio/f;

    .line 38
    iget-object v0, p0, Lcom/squareup/okhttp/s;->b:Lokio/f;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, " \"\'<>#&="

    move-object v1, p2

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/squareup/okhttp/w;->a(Lokio/f;Ljava/lang/String;IILjava/lang/String;ZZ)V

    .line 40
    return-object p0
.end method
