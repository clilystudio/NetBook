.class public abstract Lorg/mozilla/universalchardet/prober/d/m;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/mozilla/universalchardet/prober/d/k;

.field private b:I

.field private c:Lorg/mozilla/universalchardet/prober/d/k;

.field private d:[I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/mozilla/universalchardet/prober/d/k;ILorg/mozilla/universalchardet/prober/d/k;[ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/d/m;->a:Lorg/mozilla/universalchardet/prober/d/k;

    iput p2, p0, Lorg/mozilla/universalchardet/prober/d/m;->b:I

    iput-object p3, p0, Lorg/mozilla/universalchardet/prober/d/m;->c:Lorg/mozilla/universalchardet/prober/d/k;

    iput-object p4, p0, Lorg/mozilla/universalchardet/prober/d/m;->d:[I

    iput-object p5, p0, Lorg/mozilla/universalchardet/prober/d/m;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(B)I
    .locals 2

    and-int/lit16 v0, p1, 0xff

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/d/m;->a:Lorg/mozilla/universalchardet/prober/d/k;

    invoke-virtual {v1, v0}, Lorg/mozilla/universalchardet/prober/d/k;->a(I)I

    move-result v0

    return v0
.end method

.method public final a(I)I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/d/m;->d:[I

    aget v0, v0, p1

    return v0
.end method

.method public final a(II)I
    .locals 2

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/d/m;->c:Lorg/mozilla/universalchardet/prober/d/k;

    iget v1, p0, Lorg/mozilla/universalchardet/prober/d/m;->b:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/mozilla/universalchardet/prober/d/k;->a(I)I

    move-result v0

    return v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/d/m;->e:Ljava/lang/String;

    return-object v0
.end method
