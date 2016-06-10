.class public final Lcom/mob/tools/gui/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/mob/tools/gui/b;

.field private c:Lcom/mob/tools/gui/g;

.field private d:J

.field private e:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mob/tools/gui/c;->d:J

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/gui/c;Lcom/mob/tools/gui/b;)Lcom/mob/tools/gui/b;
    .locals 0

    iput-object p1, p0, Lcom/mob/tools/gui/c;->b:Lcom/mob/tools/gui/b;

    return-object p1
.end method

.method static synthetic a(Lcom/mob/tools/gui/c;Lcom/mob/tools/gui/g;)Lcom/mob/tools/gui/g;
    .locals 0

    iput-object p1, p0, Lcom/mob/tools/gui/c;->c:Lcom/mob/tools/gui/g;

    return-object p1
.end method

.method static synthetic a(Lcom/mob/tools/gui/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/mob/tools/gui/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/mob/tools/gui/c;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/mob/tools/gui/c;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 0
    .line 1000
    iput-object p1, p0, Lcom/mob/tools/gui/c;->e:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/mob/tools/gui/c;->b:Lcom/mob/tools/gui/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/c;->b:Lcom/mob/tools/gui/b;

    iget-object v1, p0, Lcom/mob/tools/gui/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mob/tools/gui/c;->e:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/mob/tools/gui/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 0
    :cond_0
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/gui/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mob/tools/gui/c;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "worker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/gui/c;->c:Lcom/mob/tools/gui/g;

    invoke-virtual {v2}, Lcom/mob/tools/gui/g;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/tools/gui/c;->c:Lcom/mob/tools/gui/g;

    invoke-virtual {v2}, Lcom/mob/tools/gui/g;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
