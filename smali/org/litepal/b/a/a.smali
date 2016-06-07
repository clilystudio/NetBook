.class public final Lorg/litepal/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/reflect/Field;

.field private e:Ljava/lang/reflect/Field;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/litepal/b/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 179
    iput p1, p0, Lorg/litepal/b/a/a;->f:I

    .line 180
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lorg/litepal/b/a/a;->a:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public final a(Ljava/lang/reflect/Field;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lorg/litepal/b/a/a;->d:Ljava/lang/reflect/Field;

    .line 138
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/litepal/b/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lorg/litepal/b/a/a;->b:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public final b(Ljava/lang/reflect/Field;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lorg/litepal/b/a/a;->e:Ljava/lang/reflect/Field;

    .line 161
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/litepal/b/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lorg/litepal/b/a/a;->c:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public final d()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/litepal/b/a/a;->d:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public final e()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/litepal/b/a/a;->e:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 189
    instance-of v0, p1, Lorg/litepal/b/a/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 190
    check-cast v0, Lorg/litepal/b/a/a;

    .line 191
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 1169
    iget v2, v0, Lorg/litepal/b/a/a;->f:I

    .line 192
    iget v3, p0, Lorg/litepal/b/a/a;->f:I

    if-ne v2, v3, :cond_1

    .line 2105
    iget-object v2, v0, Lorg/litepal/b/a/a;->c:Ljava/lang/String;

    .line 193
    iget-object v3, p0, Lorg/litepal/b/a/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3067
    iget-object v2, v0, Lorg/litepal/b/a/a;->a:Ljava/lang/String;

    .line 194
    iget-object v3, p0, Lorg/litepal/b/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3086
    iget-object v2, v0, Lorg/litepal/b/a/a;->b:Ljava/lang/String;

    .line 195
    iget-object v3, p0, Lorg/litepal/b/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 205
    :goto_0
    return v0

    .line 4067
    :cond_0
    iget-object v2, v0, Lorg/litepal/b/a/a;->a:Ljava/lang/String;

    .line 198
    iget-object v3, p0, Lorg/litepal/b/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4086
    iget-object v0, v0, Lorg/litepal/b/a/a;->b:Ljava/lang/String;

    .line 199
    iget-object v2, p0, Lorg/litepal/b/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 200
    goto :goto_0

    .line 205
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lorg/litepal/b/a/a;->f:I

    return v0
.end method
