.class final Landroid/support/v7/app/C;
.super Landroid/support/v4/app/NotificationCompat$BuilderExtender;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$BuilderExtender;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/support/v7/app/C;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 102
    invoke-static {p2, p1}, Landroid/support/v7/app/NotificationCompat;->a(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 103
    invoke-interface {p2}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
