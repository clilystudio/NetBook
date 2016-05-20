.class public final Lcom/ushaqi/zhuishushenqi/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/d;->a:Landroid/content/Intent;

    .line 28
    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/d;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/ushaqi/zhuishushenqi/d;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/d;->a:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 36
    return-object p0
.end method

.method public final a(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/d;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/d;->a:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/io/Serializable;)Lcom/ushaqi/zhuishushenqi/d;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/d;->a:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 76
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/d;->a:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    return-object p0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/d;->a:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    return-object p0
.end method
