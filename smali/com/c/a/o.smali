.class public abstract Lcom/c/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field a:F

.field private b:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/o;->b:Landroid/view/animation/Interpolator;

    .line 320
    return-void
.end method

.method public static a(FF)Lcom/c/a/o;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/c/a/p;

    invoke-direct {v0, p0, p1}, Lcom/c/a/p;-><init>(FF)V

    return-object v0
.end method

.method public static a(FI)Lcom/c/a/o;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/c/a/q;

    invoke-direct {v0, p0, p1}, Lcom/c/a/q;-><init>(FI)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method public final a(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/c/a/o;->b:Landroid/view/animation/Interpolator;

    .line 222
    return-void
.end method

.method public final b()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/c/a/o;->b:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public abstract c()Lcom/c/a/o;
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/c/a/o;->c()Lcom/c/a/o;

    move-result-object v0

    return-object v0
.end method
