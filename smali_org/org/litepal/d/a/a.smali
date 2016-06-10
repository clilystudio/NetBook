.class public final Lorg/litepal/d/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/litepal/d/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lorg/litepal/d/a/a;->d:I

    .line 132
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lorg/litepal/d/a/a;->a:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/litepal/d/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lorg/litepal/d/a/a;->b:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/litepal/d/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lorg/litepal/d/a/a;->c:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lorg/litepal/d/a/a;->d:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 141
    instance-of v1, p1, Lorg/litepal/d/a/a;

    if-eqz v1, :cond_2

    .line 142
    check-cast p1, Lorg/litepal/d/a/a;

    .line 1062
    iget-object v1, p1, Lorg/litepal/d/a/a;->a:Ljava/lang/String;

    .line 143
    if-eqz v1, :cond_2

    .line 1081
    iget-object v1, p1, Lorg/litepal/d/a/a;->b:Ljava/lang/String;

    .line 143
    if-eqz v1, :cond_2

    .line 1119
    iget v1, p1, Lorg/litepal/d/a/a;->d:I

    .line 144
    iget v2, p0, Lorg/litepal/d/a/a;->d:I

    if-ne v1, v2, :cond_2

    .line 2100
    iget-object v1, p1, Lorg/litepal/d/a/a;->c:Ljava/lang/String;

    .line 145
    iget-object v2, p0, Lorg/litepal/d/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3062
    iget-object v1, p1, Lorg/litepal/d/a/a;->a:Ljava/lang/String;

    .line 146
    iget-object v2, p0, Lorg/litepal/d/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3081
    iget-object v1, p1, Lorg/litepal/d/a/a;->b:Ljava/lang/String;

    .line 147
    iget-object v2, p0, Lorg/litepal/d/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3100
    iget-object v1, p1, Lorg/litepal/d/a/a;->c:Ljava/lang/String;

    .line 148
    iget-object v2, p0, Lorg/litepal/d/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 4062
    :cond_1
    iget-object v1, p1, Lorg/litepal/d/a/a;->a:Ljava/lang/String;

    .line 150
    iget-object v2, p0, Lorg/litepal/d/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4081
    iget-object v1, p1, Lorg/litepal/d/a/a;->b:Ljava/lang/String;

    .line 151
    iget-object v2, p0, Lorg/litepal/d/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4100
    iget-object v1, p1, Lorg/litepal/d/a/a;->c:Ljava/lang/String;

    .line 152
    iget-object v2, p0, Lorg/litepal/d/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
