.class public final Lcom/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/d;

    move-result-object v0

    sput-object v0, Lcom/a/a/a;->a:Lcom/a/a/d;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/a/a/a;->a:Lcom/a/a/d;

    invoke-virtual {v0, p0}, Lcom/a/a/d;->a(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 180
    sget-object v0, Lcom/a/a/a;->a:Lcom/a/a/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/a/a/d;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 181
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;DILjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "DI",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    sget-object v1, Lcom/a/a/a;->a:Lcom/a/a/d;

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;DILjava/util/Map;)V

    .line 44
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    sget-object v0, Lcom/a/a/a;->a:Lcom/a/a/d;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 126
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lcom/a/a/a;->a:Lcom/a/a/d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/a/a/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/a/a/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 200
    .line 201
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/a/a/b;

    invoke-direct {v1, p3}, Lcom/a/a/b;-><init>(Lcom/a/a/c;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 210
    sget-object v1, Lcom/a/a/a;->a:Lcom/a/a/d;

    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Landroid/os/Handler;)V

    .line 211
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/a/a/a;->a:Lcom/a/a/d;

    invoke-virtual {v0, p0}, Lcom/a/a/d;->b(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lcom/a/a/a;->a:Lcom/a/a/d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/a/a/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 52
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    sget-object v0, Lcom/a/a/a;->a:Lcom/a/a/d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/a/a/d;->c(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 82
    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    sget-object v0, Lcom/a/a/a;->a:Lcom/a/a/d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/a/a/d;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 169
    return-void
.end method
