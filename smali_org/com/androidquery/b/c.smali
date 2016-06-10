.class public Lcom/androidquery/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:[B

.field private d:Ljava/io/File;

.field private e:I

.field private f:J

.field private g:Z

.field private h:Z

.field private i:[Lorg/apache/http/Header;

.field private j:Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/16 v0, 0xc8

    iput v0, p0, Lcom/androidquery/b/c;->a:I

    .line 61
    const-string v0, "OK"

    iput-object v0, p0, Lcom/androidquery/b/c;->b:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/androidquery/b/c;->e:I

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/androidquery/b/c;->f:J

    .line 80
    return-void
.end method


# virtual methods
.method public final a()Lcom/androidquery/b/c;
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidquery/b/c;->g:Z

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androidquery/b/c;->h:Z

    .line 146
    return-object p0
.end method

.method protected final a(I)Lcom/androidquery/b/c;
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/androidquery/b/c;->e:I

    .line 89
    return-object p0
.end method

.method protected final a(Ljava/io/File;)Lcom/androidquery/b/c;
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/androidquery/b/c;->d:Ljava/io/File;

    .line 177
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/androidquery/b/c;
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/androidquery/b/c;->b:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method protected final a(Z)Lcom/androidquery/b/c;
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidquery/b/c;->h:Z

    .line 129
    return-object p0
.end method

.method protected final a([B)Lcom/androidquery/b/c;
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/androidquery/b/c;->c:[B

    .line 172
    return-object p0
.end method

.method protected final a([Lorg/apache/http/Header;)Lcom/androidquery/b/c;
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/androidquery/b/c;->i:[Lorg/apache/http/Header;

    .line 139
    return-object p0
.end method

.method protected final a(Ljava/io/Closeable;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/androidquery/b/c;->j:Ljava/io/Closeable;

    .line 158
    return-void
.end method

.method protected final b()Lcom/androidquery/b/c;
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androidquery/b/c;->g:Z

    .line 152
    invoke-virtual {p0}, Lcom/androidquery/b/c;->c()V

    .line 153
    return-object p0
.end method

.method public final b(I)Lcom/androidquery/b/c;
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/androidquery/b/c;->a:I

    .line 94
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 345
    iget-object v0, p0, Lcom/androidquery/b/c;->i:[Lorg/apache/http/Header;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 353
    :goto_0
    return-object v0

    .line 347
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/androidquery/b/c;->i:[Lorg/apache/http/Header;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    move-object v0, v1

    .line 353
    goto :goto_0

    .line 348
    :cond_1
    iget-object v2, p0, Lcom/androidquery/b/c;->i:[Lorg/apache/http/Header;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 349
    iget-object v1, p0, Lcom/androidquery/b/c;->i:[Lorg/apache/http/Header;

    aget-object v0, v1, v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 347
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/androidquery/b/c;->j:Ljava/io/Closeable;

    invoke-static {v0}, Lcom/androidquery/util/a;->a(Ljava/io/Closeable;)V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidquery/b/c;->j:Ljava/io/Closeable;

    .line 168
    return-void
.end method

.method protected final d()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/androidquery/b/c;->g:Z

    return v0
.end method

.method protected final e()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/androidquery/b/c;->h:Z

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/androidquery/b/c;->a:I

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/androidquery/b/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected final h()[B
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/androidquery/b/c;->c:[B

    return-object v0
.end method

.method protected final i()Ljava/io/File;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/androidquery/b/c;->d:Ljava/io/File;

    return-object v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/androidquery/b/c;->e:I

    return v0
.end method
